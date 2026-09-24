.class public abstract Lcom/autonavi/common/tool/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/tool/e$c;,
        Lcom/autonavi/common/tool/e$b;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "/system/lib/libEGL.so"

    .line 3
    const-string v1, "/system/lib/libc.so"

    .line 5
    const-string v2, "/system/lib/libc++.so"

    .line 7
    const-string v3, "/system/lib/libandroid_runtime.so"

    .line 9
    const-string v4, "/system/lib/libui.so"

    .line 11
    const-string v5, "/system/lib/libhwui.so"

    .line 13
    const-string v6, "/system/lib/libgui.so"

    .line 15
    const-string v7, "/system/lib/libdvm.so"

    .line 17
    const-string v8, "/system/lib/libart.so"

    .line 19
    const-string v9, "/system/lib/libandroid.so"

    .line 21
    const-string v10, "/system/bin/linker"

    .line 23
    const-string v11, "/system/lib/libhwaps.so"

    .line 25
    const-string v12, "/system/lib/egl/libEGL_VIVANTE.so"

    .line 27
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/autonavi/common/tool/e;->a:[Ljava/lang/String;

    .line 33
    const-string v0, "/system/vendor/lib/egl/"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/autonavi/common/tool/e;->b:[Ljava/lang/String;

    .line 41
    const-string v0, ""

    .line 43
    sput-object v0, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    sput-object v0, Lcom/autonavi/common/tool/e;->e:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/io/File;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Llj0;->j(Ljava/io/File;)J

    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v2, v3}, Llj0;->f(J)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string v3, "\tfile="

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, "\tlen="

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, "\tcrc_value="

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, "\n"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "Lcom/autonavi/common/tool/dumpcrash"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 17
    const-string v0, "libdumpcrash.so"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "UnsatisfiedLinkError"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 17
    const-string v0, "NoSuchMethodError"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 25
    const-string v0, "NoClassDefFoundError"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const-class v1, Ljava/lang/UnsatisfiedLinkError;

    .line 7
    invoke-static {p0, v1}, Llj0;->b(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 13
    const-class v1, Ljava/lang/NoClassDefFoundError;

    .line 15
    invoke-static {p0, v1}, Llj0;->b(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 21
    const-class v1, Ljava/lang/NoSuchMethodError;

    .line 23
    invoke-static {p0, v1}, Llj0;->b(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public static e(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 16
    invoke-static {p3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 20
    const/4 v2, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p3, ""

    .line 24
    const/4 v2, 0x1

    .line 25
    :goto_0
    const/4 v4, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 32
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 34
    invoke-direct {v5, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 40
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    move-object v6, v4

    .line 42
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_b

    .line 48
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 54
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 64
    move-result-object v8

    .line 65
    const-string v9, ".."

    .line 67
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v9

    .line 71
    if-nez v9, :cond_2

    .line 73
    const-string v9, "."

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_4

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 85
    move-result v9

    .line 86
    const/4 v10, 0x4

    .line 87
    if-lt v9, v10, :cond_2

    .line 89
    const-string v9, ".so"

    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_2

    .line 97
    const-string v9, "lib/"

    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_5

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/16 v9, 0x2f

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 111
    move-result v9

    .line 112
    if-ltz v9, :cond_2

    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 116
    const-string v10, "lib"

    .line 118
    const/4 v11, 0x3

    .line 119
    invoke-virtual {v8, v9, v10, p1, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 122
    move-result v10

    .line 123
    if-nez v10, :cond_6

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    if-nez v2, :cond_7

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v9

    .line 136
    if-nez v9, :cond_7

    .line 138
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_7

    .line 144
    goto :goto_1

    .line 145
    :cond_7
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 148
    move-result-object v4

    .line 149
    new-instance v7, Ljava/io/File;

    .line 151
    const-string v9, "UTF-8"

    .line 153
    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v9

    .line 157
    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 163
    move-result v9

    .line 164
    if-nez v9, :cond_8

    .line 166
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_8

    .line 176
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_8
    new-instance v9, Ljava/io/FileOutputStream;

    .line 181
    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 184
    const/high16 v6, 0x100000

    .line 186
    :try_start_3
    new-array v6, v6, [B

    .line 188
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 191
    move-result v7

    .line 192
    :goto_2
    const/4 v10, -0x1

    .line 193
    if-eq v7, v10, :cond_9

    .line 195
    invoke-virtual {v9, v6, p1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 201
    move-result v7

    .line 202
    goto :goto_2

    .line 203
    :cond_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 206
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 209
    if-nez v2, :cond_a

    .line 211
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    move-result v6

    .line 215
    if-nez v6, :cond_a

    .line 217
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    if-eqz v6, :cond_a

    .line 223
    move-object v6, v9

    .line 224
    goto :goto_3

    .line 225
    :cond_a
    move-object v6, v9

    .line 226
    goto/16 :goto_1

    .line 228
    :catchall_0
    move-exception p0

    .line 229
    move-object v6, v9

    .line 230
    goto/16 :goto_6

    .line 232
    :catch_0
    move-exception p0

    .line 233
    move-object v6, v9

    .line 234
    goto :goto_4

    .line 235
    :cond_b
    :goto_3
    if-eqz v4, :cond_c

    .line 237
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 240
    :cond_c
    if-eqz v6, :cond_d

    .line 242
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 245
    :cond_d
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 248
    :catch_1
    const/4 p1, 0x1

    .line 249
    goto :goto_5

    .line 250
    :catch_2
    move-exception p0

    .line 251
    goto :goto_4

    .line 252
    :catchall_1
    move-exception p0

    .line 253
    move-object v6, v4

    .line 254
    goto :goto_6

    .line 255
    :catch_3
    move-exception p0

    .line 256
    move-object v6, v4

    .line 257
    goto :goto_4

    .line 258
    :catchall_2
    move-exception p0

    .line 259
    move-object v5, v4

    .line 260
    move-object v6, v5

    .line 261
    goto :goto_6

    .line 262
    :catch_4
    move-exception p0

    .line 263
    move-object v5, v4

    .line 264
    move-object v6, v5

    .line 265
    :goto_4
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    const-string p3, "dump file error "

    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 279
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object p0

    .line 286
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 289
    if-eqz v4, :cond_e

    .line 291
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 294
    :cond_e
    if-eqz v6, :cond_f

    .line 296
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 299
    :cond_f
    if-eqz v5, :cond_10

    .line 301
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 304
    :catch_5
    :cond_10
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 307
    move-result-wide p2

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string v2, "all copy time = "

    .line 315
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    sub-long/2addr p2, v0

    .line 319
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 329
    return p1

    .line 330
    :catchall_3
    move-exception p0

    .line 331
    :goto_6
    if-eqz v4, :cond_11

    .line 333
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_11
    if-eqz v6, :cond_12

    .line 338
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 341
    :cond_12
    if-eqz v5, :cond_13

    .line 343
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 346
    :catch_6
    :cond_13
    throw p0
.end method

.method public static f(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;J)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/autonavi/common/tool/e;->g(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public static g(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;JLjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "dumpInApkLibs error as application = null"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0, v1}, Lcom/autonavi/common/tool/e$c;->a(I)V

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    :cond_1
    invoke-static {p1}, Lcom/autonavi/common/tool/e;->m(Landroid/content/Context;)V

    .line 26
    sget-object v2, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_8

    .line 34
    sget-object v2, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 42
    goto/16 :goto_1

    .line 44
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 46
    sget-object v2, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 48
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 60
    :cond_3
    new-instance v2, Ljava/io/File;

    .line 62
    sget-object v3, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 64
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 73
    const-string v0, "has filedir and delete"

    .line 75
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 78
    invoke-static {v2}, Lls;->b(Ljava/io/File;)Z

    .line 81
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 84
    const/4 v0, 0x2

    .line 85
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    .line 88
    move-result-wide v3

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v6, "libpath = "

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v6, ",usableSpace = "

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    .line 117
    cmp-long v5, v3, p2

    .line 119
    if-gez v5, :cond_5

    .line 121
    invoke-interface {p0, v0}, Lcom/autonavi/common/tool/e$c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 125
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 128
    move-result-object p2

    .line 129
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 131
    invoke-static {p2, v1, p1, p4}, Lcom/autonavi/common/tool/e;->e(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Z

    .line 134
    move-result p2

    .line 135
    const/4 p3, 0x0

    .line 136
    if-nez p2, :cond_6

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    invoke-static {p2, p3, p1, p4}, Lcom/autonavi/common/tool/e;->e(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Z

    .line 145
    move-result p2

    .line 146
    :cond_6
    if-nez p2, :cond_7

    .line 148
    const/4 p1, 0x3

    .line 149
    invoke-interface {p0, p1}, Lcom/autonavi/common/tool/e$c;->a(I)V

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    invoke-interface {p0, p3}, Lcom/autonavi/common/tool/e$c;->a(I)V

    .line 156
    :goto_0
    return-void

    .line 157
    :catch_0
    const-string p1, "dumpInApkLibs error as usableSpace exception"

    .line 159
    invoke-static {p1}, Lbz;->d(Ljava/lang/String;)V

    .line 162
    invoke-interface {p0, v0}, Lcom/autonavi/common/tool/e$c;->a(I)V

    .line 165
    return-void

    .line 166
    :cond_8
    :goto_1
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 169
    invoke-interface {p0, v1}, Lcom/autonavi/common/tool/e$c;->a(I)V

    .line 172
    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/util/Map;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    const-string v3, "start dumpInApkLibsByJava"

    .line 12
    invoke-static {v3}, Lbz;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 21
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 23
    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 29
    move-result-object v4

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_5

    .line 36
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 42
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    const-string v7, ".."

    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_0

    .line 61
    const-string v7, "."

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 73
    move-result v7

    .line 74
    const/4 v8, 0x4

    .line 75
    if-lt v7, v8, :cond_0

    .line 77
    const-string v7, ".so"

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_0

    .line 85
    const-string v7, "lib/"

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_3

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/16 v7, 0x2f

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 99
    move-result v7

    .line 100
    if-ltz v7, :cond_0

    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 104
    const-string v8, "lib"

    .line 106
    const/4 v9, 0x0

    .line 107
    const/4 v10, 0x3

    .line 108
    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_4

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    new-instance v7, Lcom/autonavi/common/tool/e$b;

    .line 121
    invoke-direct {v7}, Lcom/autonavi/common/tool/e$b;-><init>()V

    .line 124
    iput-object v6, v7, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 126
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 129
    move-result-wide v8

    .line 130
    iput-wide v8, v7, Lcom/autonavi/common/tool/e$b;->c:J

    .line 132
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 135
    move-result-wide v8

    .line 136
    iput-wide v8, v7, Lcom/autonavi/common/tool/e$b;->d:J

    .line 138
    new-instance v5, Ljava/io/File;

    .line 140
    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object v5, v7, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 145
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    move-result-wide v4

    .line 153
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string v3, "end dumpInApkLibsByJava time :"

    .line 163
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sub-long/2addr v4, v1

    .line 167
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception p0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v2, "dumpInApkLibsByJava error "

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 203
    :goto_1
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/autonavi/common/tool/e;->m(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_1

    .line 12
    sget-object p0, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget-object v0, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-object v0, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    :goto_0
    const-string p0, ""

    .line 48
    return-object p0
.end method

.method public static j(Landroid/app/Application;[Z)Ljava/lang/String;
    .locals 21

    .line 1
    const-string v1, "getSoInfo finally end"

    .line 3
    const-string v2, "getSoInfo finally"

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    :try_start_0
    const-string v4, "\nSOCrc32:\n"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 12
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static/range {p0 .. p0}, Lcom/autonavi/common/tool/e;->h(Landroid/content/Context;)Ljava/util/Map;

    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 27
    move-result-object v6

    .line 28
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v7, "getSoInfo dataBaseLibPath:"

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    invoke-static {v6}, Lbz;->d(Ljava/lang/String;)V

    .line 62
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 70
    const/4 v6, 0x0

    .line 71
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_7

    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lcom/autonavi/common/tool/e$b;

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ldalvik/system/PathClassLoader;

    .line 89
    iget-object v9, v7, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v8, v9}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    if-eqz v9, :cond_0

    .line 101
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v9, v7, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    nop

    .line 120
    move-object v10, v1

    .line 121
    move-object/from16 v19, v2

    .line 123
    goto/16 :goto_7

    .line 125
    :cond_0
    :goto_1
    :try_start_4
    sget-object v9, Lcom/autonavi/common/tool/e;->e:Ljava/util/List;

    .line 127
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v9

    .line 131
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    const-string v11, "SORight."

    .line 137
    const-string v12, "getSoInfo curSo:"

    .line 139
    const-string v13, "\t crc32="

    .line 141
    const-string v14, "\t len="

    .line 143
    const-string v15, "\n"

    .line 145
    const-string v3, "file="

    .line 147
    move-object/from16 v16, v4

    .line 149
    const-string v4, "\t"

    .line 151
    if-eqz v10, :cond_2

    .line 153
    :try_start_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v10

    .line 157
    check-cast v10, Ljava/lang/String;

    .line 159
    move-object/from16 v17, v5

    .line 161
    new-instance v5, Ljava/io/File;

    .line 163
    move-object/from16 v18, v9

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v10, v7, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v9

    .line 187
    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const-string v10, "getSoInfo exceptLibPath file:"

    .line 197
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v9

    .line 211
    invoke-static {v9}, Lbz;->d(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_1

    .line 220
    new-instance v9, Lcom/autonavi/common/tool/e$b;

    .line 222
    invoke-direct {v9}, Lcom/autonavi/common/tool/e$b;-><init>()V

    .line 225
    iput-object v5, v9, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 227
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 230
    move-result-object v10

    .line 231
    iput-object v10, v9, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 233
    move-object v10, v1

    .line 234
    move-object/from16 v19, v2

    .line 236
    :try_start_6
    invoke-static {v5}, Llj0;->j(Ljava/io/File;)J

    .line 239
    move-result-wide v1

    .line 240
    iput-wide v1, v9, Lcom/autonavi/common/tool/e$b;->d:J

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 245
    move-result-wide v1

    .line 246
    iput-wide v1, v9, Lcom/autonavi/common/tool/e$b;->c:J

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v9}, Lcom/autonavi/common/tool/e$b;->toString()Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v1

    .line 267
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, v9, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-wide v1, v9, Lcom/autonavi/common/tool/e$b;->c:J

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-wide v1, v9, Lcom/autonavi/common/tool/e$b;->d:J

    .line 297
    invoke-static {v1, v2}, Llj0;->f(J)Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/4 v1, 0x1

    .line 308
    goto :goto_3

    .line 309
    :cond_1
    move-object/from16 v4, v16

    .line 311
    move-object/from16 v5, v17

    .line 313
    move-object/from16 v9, v18

    .line 315
    goto/16 :goto_2

    .line 317
    :cond_2
    move-object v10, v1

    .line 318
    move-object/from16 v19, v2

    .line 320
    move-object/from16 v17, v5

    .line 322
    const/4 v1, 0x0

    .line 323
    :goto_3
    if-eqz v1, :cond_3

    .line 325
    :goto_4
    move-object v1, v10

    .line 326
    move-object/from16 v4, v16

    .line 328
    move-object/from16 v5, v17

    .line 330
    move-object/from16 v2, v19

    .line 332
    goto/16 :goto_0

    .line 334
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 336
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    const-string v5, "getSoInfo libPath:"

    .line 346
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 360
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V

    .line 363
    new-instance v2, Lcom/autonavi/common/tool/e$b;

    .line 365
    invoke-direct {v2}, Lcom/autonavi/common/tool/e$b;-><init>()V

    .line 368
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_6

    .line 374
    iput-object v1, v2, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 379
    move-result-object v5

    .line 380
    iput-object v5, v2, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 382
    invoke-static {v1}, Llj0;->j(Ljava/io/File;)J

    .line 385
    move-result-wide v8

    .line 386
    iput-wide v8, v2, Lcom/autonavi/common/tool/e$b;->d:J

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 391
    move-result-wide v8

    .line 392
    iput-wide v8, v2, Lcom/autonavi/common/tool/e$b;->c:J

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v2}, Lcom/autonavi/common/tool/e$b;->toString()Ljava/lang/String;

    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 416
    iget-wide v8, v2, Lcom/autonavi/common/tool/e$b;->d:J

    .line 418
    invoke-static {v8, v9}, Llj0;->f(J)Ljava/lang/String;

    .line 421
    move-result-object v1

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    const-string v8, "getSoInfo formatCurCrc32:"

    .line 429
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    move-result-object v5

    .line 439
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    .line 442
    iget-wide v8, v7, Lcom/autonavi/common/tool/e$b;->d:J

    .line 444
    invoke-static {v8, v9}, Llj0;->f(J)Ljava/lang/String;

    .line 447
    move-result-object v5

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    .line 450
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    const-string v9, "getSoInfo formatApkCrc32:"

    .line 455
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    move-result-object v8

    .line 465
    invoke-static {v8}, Lbz;->d(Ljava/lang/String;)V

    .line 468
    iget-wide v8, v2, Lcom/autonavi/common/tool/e$b;->c:J

    .line 470
    move-object/from16 v18, v13

    .line 472
    iget-wide v12, v7, Lcom/autonavi/common/tool/e$b;->c:J

    .line 474
    cmp-long v20, v8, v12

    .line 476
    if-nez v20, :cond_5

    .line 478
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    move-result v8

    .line 482
    if-nez v8, :cond_4

    .line 484
    goto :goto_5

    .line 485
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v3, v2, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 496
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-wide v2, v2, Lcom/autonavi/common/tool/e$b;->c:J

    .line 504
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 507
    move-object/from16 v2, v18

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    goto/16 :goto_4

    .line 520
    :cond_5
    :goto_5
    :try_start_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v4, "SOCorrupt."

    .line 525
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v3, v2, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    const-string v3, "\t rightLen="

    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-wide v3, v7, Lcom/autonavi/common/tool/e$b;->c:J

    .line 543
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 546
    const-string v3, "\t curLen="

    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-wide v2, v2, Lcom/autonavi/common/tool/e$b;->c:J

    .line 553
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 556
    const-string v2, "\t rightCrc32="

    .line 558
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v2, "\t curCrc32="

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 575
    goto :goto_6

    .line 576
    :cond_6
    move-object v2, v13

    .line 577
    :try_start_8
    const-string v1, "getSoInfo file not exists"

    .line 579
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 582
    :try_start_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v1, "SOLose."

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, v7, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-wide v3, v7, Lcom/autonavi/common/tool/e$b;->c:J

    .line 603
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-wide v1, v7, Lcom/autonavi/common/tool/e$b;->d:J

    .line 611
    invoke-static {v1, v2}, Llj0;->f(J)Ljava/lang/String;

    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 621
    :goto_6
    const/4 v6, 0x1

    .line 622
    goto/16 :goto_4

    .line 624
    :catchall_0
    move-exception v0

    .line 625
    const/4 v6, 0x1

    .line 626
    goto :goto_8

    .line 627
    :catch_1
    nop

    .line 628
    const/4 v1, 0x0

    .line 629
    const/4 v6, 0x1

    .line 630
    goto :goto_a

    .line 631
    :cond_7
    move-object v10, v1

    .line 632
    move-object/from16 v19, v2

    .line 634
    :try_start_a
    const-string v1, "getSoInfo for end"

    .line 636
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 639
    invoke-static/range {v19 .. v19}, Lbz;->d(Ljava/lang/String;)V

    .line 642
    if-eqz p1, :cond_9

    .line 644
    const/4 v1, 0x0

    .line 645
    aput-boolean v6, p1, v1

    .line 647
    goto :goto_b

    .line 648
    :catchall_1
    move-exception v0

    .line 649
    goto :goto_8

    .line 650
    :catchall_2
    move-exception v0

    .line 651
    move-object v10, v1

    .line 652
    move-object/from16 v19, v2

    .line 654
    goto :goto_8

    .line 655
    :catch_2
    move-object v10, v1

    .line 656
    move-object/from16 v19, v2

    .line 658
    :catch_3
    nop

    .line 659
    :goto_7
    const/4 v1, 0x0

    .line 660
    goto :goto_a

    .line 661
    :catch_4
    move-object v10, v1

    .line 662
    move-object/from16 v19, v2

    .line 664
    nop

    .line 665
    const/4 v1, 0x0

    .line 666
    goto :goto_9

    .line 667
    :catchall_3
    move-exception v0

    .line 668
    move-object v10, v1

    .line 669
    move-object/from16 v19, v2

    .line 671
    const/4 v6, 0x0

    .line 672
    :goto_8
    invoke-static/range {v19 .. v19}, Lbz;->d(Ljava/lang/String;)V

    .line 675
    if-eqz p1, :cond_8

    .line 677
    const/4 v1, 0x0

    .line 678
    aput-boolean v6, p1, v1

    .line 680
    :cond_8
    invoke-static {v10}, Lbz;->d(Ljava/lang/String;)V

    .line 683
    throw v0

    .line 684
    :catch_5
    move-object v10, v1

    .line 685
    move-object/from16 v19, v2

    .line 687
    const/4 v1, 0x0

    .line 688
    nop

    .line 689
    :goto_9
    const/4 v6, 0x0

    .line 690
    :goto_a
    invoke-static/range {v19 .. v19}, Lbz;->d(Ljava/lang/String;)V

    .line 693
    if-eqz p1, :cond_9

    .line 695
    aput-boolean v6, p1, v1

    .line 697
    :cond_9
    :goto_b
    invoke-static {v10}, Lbz;->d(Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/autonavi/common/tool/e;->l()Ljava/lang/String;

    .line 703
    move-result-object v1

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, "finish getSoInfo"

    .line 709
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 716
    return-object v0
.end method

.method public static k(Ljava/lang/Throwable;Ljava/lang/String;Landroid/app/Application;Z[Z)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v1, p4

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez p3, :cond_1

    .line 12
    move-object/from16 v0, p2

    .line 14
    :try_start_0
    invoke-static {v0, v1}, Lcom/autonavi/common/tool/e;->j(Landroid/app/Application;[Z)Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 18
    if-eqz v1, :cond_0

    .line 20
    aput-boolean v4, v1, v4

    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    move-object/from16 v0, p2

    .line 25
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/autonavi/common/tool/e;->d(Ljava/lang/Throwable;)Z

    .line 28
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 29
    const-string v6, ""

    .line 31
    if-eqz v5, :cond_4

    .line 33
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/autonavi/common/tool/e;->b(Ljava/lang/String;)Z

    .line 36
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 37
    if-eqz v5, :cond_5

    .line 39
    if-eqz v1, :cond_2

    .line 41
    :try_start_3
    aput-boolean v3, v1, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_c

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v7, 0x1

    .line 49
    goto/16 :goto_9

    .line 51
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 53
    aput-boolean v3, v1, v4

    .line 55
    :cond_3
    return-object v6

    .line 56
    :cond_4
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/autonavi/common/tool/e;->c(Ljava/lang/String;)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_e

    .line 62
    const-string v5, "so no match exception by exception info"

    .line 64
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    .line 67
    :cond_5
    const-string v5, "\nSOCrc32:\n"

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v5, "start do dumpInApkLibs"

    .line 74
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    .line 77
    invoke-static/range {p2 .. p2}, Lcom/autonavi/common/tool/e;->h(Landroid/content/Context;)Ljava/util/Map;

    .line 80
    move-result-object v5

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 89
    move-result-object v7

    .line 90
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 110
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 118
    const/4 v7, 0x0

    .line 119
    :goto_1
    :try_start_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_d

    .line 125
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Lcom/autonavi/common/tool/e$b;

    .line 131
    iget-object v9, v8, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 133
    sget-object v10, Lcom/autonavi/common/tool/e;->e:Ljava/util/List;

    .line 135
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v10

    .line 139
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 143
    const-string v12, "SORight."

    .line 145
    const-string v13, "\t crc32="

    .line 147
    const-string v14, "\t len="

    .line 149
    const-string v15, "\n"

    .line 151
    const-string v3, "file="

    .line 153
    const-string v4, "\t"

    .line 155
    if-eqz v11, :cond_7

    .line 157
    :try_start_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v11

    .line 161
    check-cast v11, Ljava/lang/String;

    .line 163
    move-object/from16 p0, v5

    .line 165
    new-instance v5, Ljava/io/File;

    .line 167
    move-object/from16 p1, v10

    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 179
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v10

    .line 189
    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 195
    move-result v10

    .line 196
    if-eqz v10, :cond_6

    .line 198
    new-instance v10, Lcom/autonavi/common/tool/e$b;

    .line 200
    invoke-direct {v10}, Lcom/autonavi/common/tool/e$b;-><init>()V

    .line 203
    iput-object v5, v10, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 205
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 208
    move-result-object v11

    .line 209
    iput-object v11, v10, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 211
    move/from16 p2, v7

    .line 213
    move-object/from16 p3, v8

    .line 215
    :try_start_7
    invoke-static {v5}, Llj0;->j(Ljava/io/File;)J

    .line 218
    move-result-wide v7

    .line 219
    iput-wide v7, v10, Lcom/autonavi/common/tool/e$b;->d:J

    .line 221
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 224
    move-result-wide v7

    .line 225
    iput-wide v7, v10, Lcom/autonavi/common/tool/e$b;->c:J

    .line 227
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v5, v10, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 238
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-wide v7, v10, Lcom/autonavi/common/tool/e$b;->c:J

    .line 246
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-wide v7, v10, Lcom/autonavi/common/tool/e$b;->d:J

    .line 254
    invoke-static {v7, v8}, Llj0;->f(J)Ljava/lang/String;

    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/4 v5, 0x1

    .line 265
    goto :goto_3

    .line 266
    :cond_6
    move-object/from16 v5, p0

    .line 268
    move-object/from16 v10, p1

    .line 270
    const/4 v3, 0x1

    .line 271
    const/4 v4, 0x0

    .line 272
    goto/16 :goto_2

    .line 274
    :cond_7
    move-object/from16 p0, v5

    .line 276
    move/from16 p2, v7

    .line 278
    move-object/from16 p3, v8

    .line 280
    const/4 v5, 0x0

    .line 281
    :goto_3
    if-eqz v5, :cond_8

    .line 283
    move-object/from16 v5, p0

    .line 285
    move/from16 v7, p2

    .line 287
    :goto_4
    const/4 v3, 0x1

    .line 288
    const/4 v4, 0x0

    .line 289
    goto/16 :goto_1

    .line 291
    :cond_8
    invoke-virtual {v0, v9}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object v5

    .line 295
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_9

    .line 301
    const-string v5, "libPath is empty then is read data/data"

    .line 303
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v5

    .line 321
    :cond_9
    new-instance v7, Ljava/io/File;

    .line 323
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    new-instance v5, Lcom/autonavi/common/tool/e$b;

    .line 328
    invoke-direct {v5}, Lcom/autonavi/common/tool/e$b;-><init>()V

    .line 331
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 334
    move-result v8

    .line 335
    if-eqz v8, :cond_c

    .line 337
    iput-object v7, v5, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 339
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 342
    move-result-object v8

    .line 343
    iput-object v8, v5, Lcom/autonavi/common/tool/e$b;->a:Ljava/lang/String;

    .line 345
    invoke-static {v7}, Llj0;->j(Ljava/io/File;)J

    .line 348
    move-result-wide v8

    .line 349
    iput-wide v8, v5, Lcom/autonavi/common/tool/e$b;->d:J

    .line 351
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 354
    move-result-wide v7

    .line 355
    iput-wide v7, v5, Lcom/autonavi/common/tool/e$b;->c:J

    .line 357
    iget-wide v7, v5, Lcom/autonavi/common/tool/e$b;->d:J

    .line 359
    invoke-static {v7, v8}, Llj0;->f(J)Ljava/lang/String;

    .line 362
    move-result-object v7

    .line 363
    move-object/from16 v8, p3

    .line 365
    iget-wide v9, v8, Lcom/autonavi/common/tool/e$b;->d:J

    .line 367
    invoke-static {v9, v10}, Llj0;->f(J)Ljava/lang/String;

    .line 370
    move-result-object v9

    .line 371
    iget-wide v10, v5, Lcom/autonavi/common/tool/e$b;->c:J

    .line 373
    move-object/from16 p1, v0

    .line 375
    iget-wide v0, v8, Lcom/autonavi/common/tool/e$b;->c:J

    .line 377
    cmp-long v16, v10, v0

    .line 379
    if-nez v16, :cond_b

    .line 381
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_a

    .line 387
    goto :goto_5

    .line 388
    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v0, v5, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-wide v0, v5, Lcom/autonavi/common/tool/e$b;->c:J

    .line 407
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 419
    move/from16 v7, p2

    .line 421
    goto :goto_7

    .line 422
    :cond_b
    :goto_5
    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v0, "SOCorrupt."

    .line 427
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v0, v5, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    const-string v0, "\t rightLen="

    .line 440
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-wide v0, v8, Lcom/autonavi/common/tool/e$b;->c:J

    .line 445
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    const-string v0, "\t curLen="

    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-wide v0, v5, Lcom/autonavi/common/tool/e$b;->c:J

    .line 455
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    const-string v0, "\t rightCrc32="

    .line 460
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "\t curCrc32="

    .line 468
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    goto :goto_6

    .line 478
    :cond_c
    move-object/from16 v8, p3

    .line 480
    move-object/from16 p1, v0

    .line 482
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v0, "SOLose."

    .line 487
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, v8, Lcom/autonavi/common/tool/e$b;->b:Ljava/io/File;

    .line 495
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-wide v0, v8, Lcom/autonavi/common/tool/e$b;->c:J

    .line 503
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-wide v0, v8, Lcom/autonavi/common/tool/e$b;->d:J

    .line 511
    invoke-static {v0, v1}, Llj0;->f(J)Ljava/lang/String;

    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 521
    :goto_6
    const/4 v7, 0x1

    .line 522
    :goto_7
    move-object/from16 v5, p0

    .line 524
    move-object/from16 v0, p1

    .line 526
    move-object/from16 v1, p4

    .line 528
    goto/16 :goto_4

    .line 530
    :catchall_1
    move-exception v0

    .line 531
    const/4 v3, 0x1

    .line 532
    goto :goto_c

    .line 533
    :catchall_2
    move-exception v0

    .line 534
    goto :goto_8

    .line 535
    :catch_1
    move-exception v0

    .line 536
    move/from16 v7, p2

    .line 538
    goto :goto_9

    .line 539
    :cond_d
    move/from16 p2, v7

    .line 541
    if-eqz p4, :cond_11

    .line 543
    const/4 v1, 0x0

    .line 544
    aput-boolean p2, p4, v1

    .line 546
    goto :goto_b

    .line 547
    :catchall_3
    move-exception v0

    .line 548
    move/from16 p2, v7

    .line 550
    :goto_8
    move/from16 v3, p2

    .line 552
    goto :goto_c

    .line 553
    :catch_2
    move-exception v0

    .line 554
    move/from16 p2, v7

    .line 556
    goto :goto_9

    .line 557
    :cond_e
    if-eqz p4, :cond_f

    .line 559
    const/4 v1, 0x0

    .line 560
    aput-boolean v1, p4, v1

    .line 562
    :cond_f
    return-object v6

    .line 563
    :catchall_4
    move-exception v0

    .line 564
    const/4 v3, 0x0

    .line 565
    goto :goto_c

    .line 566
    :catch_3
    move-exception v0

    .line 567
    const/4 v7, 0x0

    .line 568
    :goto_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    const-string v3, "getSoInfo error"

    .line 575
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 581
    move-result-object v3

    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object v1

    .line 589
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 592
    invoke-static {v0}, Lcom/autonavi/common/tool/e;->d(Ljava/lang/Throwable;)Z

    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_10

    .line 598
    const-string v0, "dump in apk error so mark soCorrupt as true"

    .line 600
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 603
    const/4 v3, 0x1

    .line 604
    goto :goto_a

    .line 605
    :cond_10
    move v3, v7

    .line 606
    :goto_a
    if-eqz p4, :cond_11

    .line 608
    const/4 v1, 0x0

    .line 609
    aput-boolean v3, p4, v1

    .line 611
    :cond_11
    :goto_b
    invoke-static {}, Lcom/autonavi/common/tool/e;->l()Ljava/lang/String;

    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v0, "finish getSoInfo"

    .line 620
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    move-result-object v0

    .line 627
    return-object v0

    .line 628
    :catchall_5
    move-exception v0

    .line 629
    move v3, v7

    .line 630
    :goto_c
    if-eqz p4, :cond_12

    .line 632
    const/4 v1, 0x0

    .line 633
    aput-boolean v3, p4, v1

    .line 635
    :cond_12
    throw v0
.end method

.method public static l()Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "getSysLibSoInfo"

    .line 3
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v1, Lcom/autonavi/common/tool/e;->a:[Ljava/lang/String;

    .line 13
    array-length v1, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    const-string v4, "\n"

    .line 18
    const-string v5, " no exists"

    .line 20
    if-ge v3, v1, :cond_1

    .line 22
    new-instance v6, Ljava/io/File;

    .line 24
    sget-object v7, Lcom/autonavi/common/tool/e;->a:[Ljava/lang/String;

    .line 26
    aget-object v8, v7, v3

    .line 28
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_0

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    aget-object v5, v7, v3

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, " exists"

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lbz;->d(Ljava/lang/String;)V

    .line 59
    invoke-static {v0, v6}, Lcom/autonavi/common/tool/e;->a(Ljava/lang/StringBuilder;Ljava/io/File;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string v6, "\tfile="

    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    aget-object v6, v7, v3

    .line 70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget-object v1, Lcom/autonavi/common/tool/e;->b:[Ljava/lang/String;

    .line 84
    array-length v1, v1

    .line 85
    const/4 v3, 0x0

    .line 86
    :goto_2
    if-ge v3, v1, :cond_7

    .line 88
    new-instance v6, Ljava/io/File;

    .line 90
    sget-object v7, Lcom/autonavi/common/tool/e;->b:[Ljava/lang/String;

    .line 92
    aget-object v8, v7, v3

    .line 94
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_5

    .line 103
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_2

    .line 109
    goto :goto_4

    .line 110
    :cond_2
    new-instance v7, Lcom/autonavi/common/tool/e$a;

    .line 112
    invoke-direct {v7}, Lcom/autonavi/common/tool/e$a;-><init>()V

    .line 115
    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 118
    move-result-object v6

    .line 119
    if-nez v6, :cond_3

    .line 121
    goto :goto_5

    .line 122
    :cond_3
    array-length v7, v6

    .line 123
    const/4 v8, 0x0

    .line 124
    :goto_3
    if-ge v8, v7, :cond_6

    .line 126
    aget-object v9, v6, v8

    .line 128
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_4

    .line 134
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    .line 137
    move-result v10

    .line 138
    if-eqz v10, :cond_4

    .line 140
    invoke-static {v0, v9}, Lcom/autonavi/common/tool/e;->a(Ljava/lang/StringBuilder;Ljava/io/File;)V

    .line 143
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    :goto_4
    const-string v6, "\tpath="

    .line 148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    aget-object v6, v7, v3

    .line 153
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    return-object v0
.end method

.method public static declared-synchronized m(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/autonavi/common/tool/e;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p0, :cond_2

    .line 16
    :try_start_1
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 19
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    if-nez p0, :cond_1

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object p0

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 45
    const-string v1, "version"

    .line 47
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    sput-object p0, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    :try_start_4
    const-string p0, "get version name error"

    .line 60
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    .line 67
    throw p0
.end method

.method public static declared-synchronized n(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-class v0, Lcom/autonavi/common/tool/e;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/common/tool/e;->m(Landroid/content/Context;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "BASE_APK_VERSION = "

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",BASE_LIB_PATH"

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v1, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_5

    .line 47
    sget-object p0, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 58
    sget-object v1, Lcom/autonavi/common/tool/e;->d:Ljava/lang/String;

    .line 60
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 66
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez v1, :cond_1

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 74
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-nez p0, :cond_2

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :cond_2
    :try_start_2
    array-length v1, p0

    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_0
    if-ge v2, v1, :cond_4

    .line 83
    aget-object v3, p0, v2

    .line 85
    sget-object v4, Lcom/autonavi/common/tool/e;->c:Ljava/lang/String;

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 97
    invoke-static {v3}, Lls;->b(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :cond_5
    :goto_1
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v0

    .line 109
    throw p0
.end method
