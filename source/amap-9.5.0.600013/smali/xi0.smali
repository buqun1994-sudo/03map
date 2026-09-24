.class public Lxi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lxi0;->a:Ljava/io/File;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Lxi0$b;

    .line 12
    invoke-direct {v0, p0}, Lxi0$b;-><init>(Lxi0;)V

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 21
    array-length v0, p1

    .line 22
    if-nez v0, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    array-length v0, p1

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_2

    .line 29
    aget-object v2, p1, v1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v4, "file name = "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, " is delete"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    const v4, 0x8000

    .line 60
    invoke-static {v4, v3}, Lbz;->b(ILjava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    return-void
.end method

.method public b()[Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lxi0;->a:Ljava/io/File;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lxi0;->a:Ljava/io/File;

    .line 14
    invoke-virtual {p0, v0}, Lxi0;->a(Ljava/io/File;)V

    .line 17
    iget-object v0, p0, Lxi0;->a:Ljava/io/File;

    .line 19
    new-instance v1, Lxi0$a;

    .line 21
    invoke-direct {v1, p0}, Lxi0$a;-><init>(Lxi0;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1
    :goto_0
    const-string v0, "crash dir is not exist"

    .line 31
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public c(Ljava/util/List;Z)[B
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lxi0;->b()[Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 8
    array-length v2, v0

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_7

    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 15
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    .line 20
    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    const/16 v4, 0x400

    .line 25
    :try_start_2
    new-array v4, v4, [C

    .line 27
    array-length v5, v0

    .line 28
    const/4 v6, 0x0

    .line 29
    const-wide/16 v7, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_0
    if-ge v9, v5, :cond_3

    .line 34
    aget-object v10, v0, v9

    .line 36
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 39
    move-result-wide v11

    .line 40
    add-long/2addr v11, v7

    .line 41
    const-wide/32 v13, 0xa3930

    .line 44
    cmp-long v15, v11, v13

    .line 46
    if-ltz v15, :cond_1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v12, Ljava/io/FileInputStream;

    .line 56
    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    new-instance v13, Ljava/io/InputStreamReader;

    .line 61
    const-string v14, "utf-8"

    .line 63
    invoke-direct {v13, v12, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    new-instance v14, Ljava/util/zip/ZipEntry;

    .line 68
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    move-result-object v15

    .line 72
    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 78
    :goto_1
    invoke-virtual {v13, v4}, Ljava/io/Reader;->read([C)I

    .line 81
    move-result v14

    .line 82
    if-lez v14, :cond_2

    .line 84
    invoke-virtual {v11, v4, v6, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v13}, Ljava/io/Reader;->close()V

    .line 91
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 94
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v11

    .line 98
    move/from16 v12, p2

    .line 100
    invoke-static {v11, v12}, Lcom/autonavi/common/tool/util/AESUtils;->d(Ljava/lang/String;Z)Ljava/lang/String;

    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 107
    move-result-object v11

    .line 108
    array-length v13, v11

    .line 109
    invoke-virtual {v3, v11, v6, v13}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 112
    array-length v11, v11

    .line 113
    int-to-long v13, v11

    .line 114
    add-long/2addr v7, v13

    .line 115
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 118
    move-object/from16 v11, p1

    .line 120
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v13, "curFileSize ="

    .line 130
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v10

    .line 140
    invoke-static {v10}, Lbz;->d(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v9, v9, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    :goto_2
    move-object/from16 v11, p1

    .line 148
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 151
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 154
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 157
    move-result-object v0

    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_4

    .line 164
    const-string v0, "final file is empty"

    .line 166
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 172
    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 175
    :catch_1
    return-object v1

    .line 176
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 179
    :catch_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 182
    :catch_3
    return-object v0

    .line 183
    :catch_4
    move-exception v0

    .line 184
    goto :goto_3

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto :goto_5

    .line 187
    :catch_5
    move-exception v0

    .line 188
    move-object v3, v1

    .line 189
    goto :goto_3

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    move-object v2, v1

    .line 192
    goto :goto_5

    .line 193
    :catch_6
    move-exception v0

    .line 194
    move-object v2, v1

    .line 195
    move-object v3, v2

    .line 196
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 199
    if-eqz v3, :cond_5

    .line 201
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 204
    goto :goto_4

    .line 205
    :catch_7
    nop

    .line 206
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 208
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 211
    :catch_8
    :cond_6
    return-object v1

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    move-object v1, v3

    .line 214
    :goto_5
    if-eqz v1, :cond_7

    .line 216
    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 219
    goto :goto_6

    .line 220
    :catch_9
    nop

    .line 221
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 223
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 226
    :catch_a
    :cond_8
    throw v0

    .line 227
    :cond_9
    :goto_7
    const-string v0, "crash***.tmp is empty"

    .line 229
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 232
    return-object v1
.end method
