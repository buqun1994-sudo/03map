.class public abstract Lcom/autonavi/common/tool/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/proc/self/fd"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    move-result-object v1

    .line 25
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    :cond_0
    return v0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .locals 17

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v2, "\n"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "\t"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "size:"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 28
    move-result-wide v4

    .line 29
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "canRead:"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canRead()Z

    .line 46
    move-result v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "canWrite:"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    .line 61
    move-result v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "canExecute:"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canExecute()Z

    .line 76
    move-result v0

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/4 v4, 0x0

    .line 84
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    const/16 v5, 0x11

    .line 90
    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 94
    if-nez v5, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "cannot open database."

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    goto/16 :goto_3

    .line 109
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "version:"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 120
    move-result v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 127
    :try_start_2
    const-string v7, "sqlite_master"

    .line 129
    const/4 v0, 0x1

    .line 130
    new-array v8, v0, [Ljava/lang/String;

    .line 132
    const-string v6, "name"

    .line 134
    const/4 v14, 0x0

    .line 135
    aput-object v6, v8, v14

    .line 137
    const-string v9, "type=\'table\'"

    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    move-object v6, v5

    .line 144
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 147
    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 148
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_4

    .line 154
    new-array v0, v0, [Ljava/lang/String;

    .line 156
    const-string v6, "count(*)"

    .line 158
    aput-object v6, v0, v14

    .line 160
    :goto_0
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v11, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    const/16 v16, 0x0

    .line 170
    move-object v6, v5

    .line 171
    move-object v7, v13

    .line 172
    move-object v8, v0

    .line 173
    move-object v4, v13

    .line 174
    move-object/from16 v13, v16

    .line 176
    :try_start_4
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 179
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_1

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v7, "table:"

    .line 191
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v4, " count:"

    .line 199
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 205
    move-result-wide v7

    .line 206
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    :cond_1
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 215
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 218
    move-result v4

    .line 219
    if-nez v4, :cond_2

    .line 221
    goto :goto_2

    .line 222
    :cond_2
    const/4 v4, 0x0

    .line 223
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    move-object v4, v6

    .line 226
    goto :goto_1

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    const/4 v4, 0x0

    .line 229
    :goto_1
    if-eqz v4, :cond_3

    .line 231
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 235
    :cond_4
    :goto_2
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 238
    :goto_3
    if-eqz v5, :cond_6

    .line 240
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 243
    goto :goto_6

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    move-object v4, v15

    .line 246
    goto :goto_4

    .line 247
    :catchall_3
    move-exception v0

    .line 248
    const/4 v4, 0x0

    .line 249
    :goto_4
    if-eqz v4, :cond_5

    .line 251
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_5
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 255
    :catchall_4
    move-exception v0

    .line 256
    move-object v4, v5

    .line 257
    goto :goto_5

    .line 258
    :catchall_5
    move-exception v0

    .line 259
    const/4 v4, 0x0

    .line 260
    :goto_5
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "catch Throwable msg:"

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 281
    if-eqz v4, :cond_6

    .line 283
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 286
    :cond_6
    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    return-object v0

    .line 291
    :catchall_6
    move-exception v0

    .line 292
    if-eqz v4, :cond_7

    .line 294
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 297
    :cond_7
    throw v0
.end method

.method public static c(Ljava/lang/Throwable;Landroid/app/Application;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "\t"

    .line 3
    const-string v1, "\n"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    :try_start_0
    const-string v3, "\nAppendInfo:\n"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Landroid/os/StatFs;

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v5, "Data TotalBytes:"

    .line 33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    .line 39
    move-result v5

    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 44
    move-result v7

    .line 45
    int-to-long v7, v7

    .line 46
    mul-long v5, v5, v7

    .line 48
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, " AvailableBytes:"

    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 59
    move-result v5

    .line 60
    int-to-long v5, v5

    .line 61
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 64
    move-result v4

    .line 65
    int-to-long v7, v4

    .line 66
    mul-long v5, v5, v7

    .line 68
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, "Data TotalSpace:"

    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    .line 85
    move-result-wide v4

    .line 86
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, " UsableSpace:"

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 97
    move-result-wide v4

    .line 98
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, "NDK_getUsableSpace:"

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3}, Lcom/autonavi/common/tool/dumpcrash;->getUsableSpace(Ljava/lang/String;)J

    .line 119
    move-result-wide v3

    .line 120
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :catchall_0
    :try_start_2
    const-class v3, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    .line 128
    invoke-static {p0, v3}, Llj0;->b(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    .line 131
    move-result p0

    .line 132
    const/4 v3, 0x0

    .line 133
    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lcom/autonavi/common/tool/c;->d()I

    .line 138
    move-result p0

    .line 139
    invoke-static {}, Lcom/autonavi/common/tool/c;->a()I

    .line 142
    move-result v4

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v5, "limitCount:"

    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v5, " currentCount:"

    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    if-gt v4, p0, :cond_0

    .line 167
    int-to-float v4, v4

    .line 168
    int-to-float p0, p0

    .line 169
    div-float/2addr v4, p0

    .line 170
    float-to-double v4, v4

    .line 171
    const-wide v6, 0x3fee666666666666L    # 0.95

    .line 176
    cmpl-double p0, v4, v6

    .line 178
    if-lez p0, :cond_0

    .line 180
    invoke-static {}, Lql;->e()Lql;

    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lql;->h()V

    .line 187
    const-string p0, "FDinfo:\n"

    .line 189
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v3}, Lql;->c(Z)Ljava/util/List;

    .line 195
    move-result-object p0

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    move-result-object p0

    .line 200
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_0

    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto :goto_0

    .line 222
    :cond_0
    const-string p0, "Mounts:\n"

    .line 224
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance p0, Ljava/io/File;

    .line 229
    const-string v0, "/proc/self/mounts"

    .line 231
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/autonavi/common/tool/c$a;

    .line 236
    invoke-direct {v0, v2}, Lcom/autonavi/common/tool/c$a;-><init>(Ljava/lang/StringBuilder;)V

    .line 239
    invoke-static {p0, v0}, Lls;->c(Ljava/io/File;Lls$a;)V

    .line 242
    const-string p0, "\nDumpDatabases:\n"

    .line 244
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string p0, "aMap.db"

    .line 249
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 252
    move-result-object p0

    .line 253
    if-nez p0, :cond_1

    .line 255
    new-instance p0, Ljava/io/File;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 264
    move-result-object p1

    .line 265
    const-string v0, "databases"

    .line 267
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 274
    move-result-object p0

    .line 275
    :goto_1
    move-object p1, p0

    .line 276
    :goto_2
    if-eqz p1, :cond_2

    .line 278
    const-string v0, "\t dir="

    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v0, " canRead:"

    .line 292
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 298
    move-result v0

    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, " canWrite:"

    .line 304
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 310
    move-result v0

    .line 311
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, " canExecute:"

    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    .line 322
    move-result v0

    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 332
    move-result-object p1

    .line 333
    goto :goto_2

    .line 334
    :cond_2
    new-instance p1, Lcom/autonavi/common/tool/c$b;

    .line 336
    invoke-direct {p1}, Lcom/autonavi/common/tool/c$b;-><init>()V

    .line 339
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 342
    move-result-object p0

    .line 343
    array-length p1, p0

    .line 344
    :goto_3
    if-ge v3, p1, :cond_3

    .line 346
    aget-object v0, p0, v3

    .line 348
    invoke-static {v0}, Lcom/autonavi/common/tool/c;->b(Ljava/io/File;)Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 357
    goto :goto_3

    .line 358
    :catchall_1
    move-exception p0

    .line 359
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 361
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    const-string v0, "getDatabaseInfoError."

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 372
    move-result-object p0

    .line 373
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object p0

    .line 380
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 383
    :catchall_2
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object p0

    .line 387
    return-object p0
.end method

.method public static d()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    new-instance v1, Ljava/io/File;

    .line 6
    const-string v2, "/proc/self/limits"

    .line 8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lcom/autonavi/common/tool/c$c;

    .line 13
    invoke-direct {v2, v0}, Lcom/autonavi/common/tool/c$c;-><init>([I)V

    .line 16
    invoke-static {v1, v2}, Lls;->c(Ljava/io/File;Lls$a;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    aget v0, v0, v1

    .line 22
    return v0
.end method
