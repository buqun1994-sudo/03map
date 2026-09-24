.class public abstract Lma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "DexTrace.AutoNaviLoader"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .line 1
    if-eqz p0, :cond_4

    .line 3
    const-string v0, ""

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_4

    .line 11
    if-eqz p1, :cond_3

    .line 13
    new-instance v0, Ljava/io/File;

    .line 15
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 25
    sget-object p0, Lma;->a:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-static {p1}, Lra;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "no exists "

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    new-array v0, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {p0, p1, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v2

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/File;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "dexopt"

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 105
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v3, Ljava/io/File;

    .line 112
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    move-result-wide v3

    .line 122
    move-object p0, p1

    .line 123
    check-cast p0, Landroid/app/Application;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ldalvik/system/PathClassLoader;

    .line 131
    invoke-static {p0, v5, v1, v0}, Lnf0;->d(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;)Z

    .line 134
    move-result p0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    move-result-wide v0

    .line 139
    sub-long/2addr v0, v3

    .line 140
    if-eqz p0, :cond_2

    .line 142
    sget-object v3, Lma;->a:Ljava/lang/String;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-static {p1}, Lra;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string p1, " install dexes success cost "

    .line 158
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    new-array v0, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {v3, p1, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    sget-object p1, Lma;->a:Ljava/lang/String;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v4, "install dexes failed cost "

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    new-array v1, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {p1, v0, v1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    return p0

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    sget-object p1, Lma;->a:Ljava/lang/String;

    .line 202
    const-string v0, "when throwable install dexes failed"

    .line 204
    new-array v1, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {p1, v0, p0, v1}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 209
    return v2

    .line 210
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 212
    const-string p1, "param context  must not be null"

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    throw p0

    .line 218
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 220
    const-string p1, "param path  must not be null"

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lma;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lma;->a:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v4, "needVersionPath = "

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    new-array v4, v0, [Ljava/lang/Object;

    .line 29
    invoke-static {v2, v3, v4}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "classes.dex"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, p0}, Lma;->a(Ljava/lang/String;Landroid/content/Context;)Z

    .line 63
    move-result v0

    .line 64
    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    move-result-object v0

    .line 29
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 31
    sget-object v0, Lma;->a:Ljava/lang/String;

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v6, "versioncode="

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    new-array v6, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v5, v6}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :cond_0
    :goto_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v6, "getNeedVersionPath:"

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 85
    move-result v0

    .line 86
    const-string v5, "activity"

    .line 88
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroid/app/ActivityManager;

    .line 94
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v5

    .line 102
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_a

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 114
    sget-object v7, Lei0;->a:Ljava/lang/String;

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v9, "appProcess.processName:"

    .line 123
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v9, "   context.getPackageName: "

    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v8

    .line 147
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_9

    .line 162
    sget-object v7, Lei0;->a:Ljava/lang/String;

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v9, "appProcess.pid\uff1a"

    .line 171
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v9, "  myPid:"

    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v8

    .line 191
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 196
    if-ne v6, v0, :cond_9

    .line 198
    sget-object v6, Lma;->a:Ljava/lang/String;

    .line 200
    new-array v7, v2, [Ljava/lang/Object;

    .line 202
    const-string v8, "main process:Effect start"

    .line 204
    invoke-static {v6, v8, v7}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    sget-object v6, Lei0;->a:Ljava/lang/String;

    .line 209
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v6, Lsi0;

    .line 214
    invoke-direct {v6, v3, v4}, Lsi0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static/range {p0 .. p0}, Lkk0;->b(Landroid/content/Context;)Lkk0;

    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v7}, Lkk0;->c()Ljava/util/ArrayList;

    .line 224
    move-result-object v7

    .line 225
    if-eqz v7, :cond_7

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 230
    move-result v8

    .line 231
    if-lez v8, :cond_7

    .line 233
    new-instance v8, Ljava/util/Date;

    .line 235
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 238
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    .line 241
    move-result-wide v8

    .line 242
    const-wide/16 v10, 0x3e8

    .line 244
    div-long/2addr v8, v10

    .line 245
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 248
    move-result v10

    .line 249
    const/4 v11, 0x0

    .line 250
    :goto_2
    if-lez v10, :cond_6

    .line 252
    add-int/lit8 v12, v10, -0x1

    .line 254
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object v13

    .line 258
    check-cast v13, Ljk0;

    .line 260
    if-eqz v13, :cond_4

    .line 262
    iget-boolean v14, v13, Ljk0;->k:Z

    .line 264
    if-eqz v14, :cond_4

    .line 266
    iget v14, v13, Ljk0;->o:I

    .line 268
    const-wide/16 v15, 0x0

    .line 270
    const/16 v17, 0x1

    .line 272
    if-lez v14, :cond_3

    .line 274
    const v11, 0x15180

    .line 277
    mul-int v14, v14, v11

    .line 279
    move-object/from16 v18, v3

    .line 281
    int-to-long v2, v14

    .line 282
    move v14, v0

    .line 283
    iget-wide v0, v13, Ljk0;->n:J

    .line 285
    cmp-long v11, v15, v0

    .line 287
    if-eqz v11, :cond_2

    .line 289
    add-long v19, v8, v2

    .line 291
    cmp-long v11, v19, v0

    .line 293
    if-gez v11, :cond_1

    .line 295
    goto :goto_3

    .line 296
    :cond_1
    move-object/from16 v19, v4

    .line 298
    move-object/from16 v20, v5

    .line 300
    goto :goto_4

    .line 301
    :cond_2
    :goto_3
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v11, "deadTime="

    .line 310
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    const-string v11, " lTime="

    .line 318
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    const-string v11, " tmpVerTime="

    .line 326
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    move-object/from16 v19, v4

    .line 331
    move-object/from16 v20, v5

    .line 333
    iget-wide v4, v13, Ljk0;->n:J

    .line 335
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    add-long/2addr v2, v8

    .line 346
    iput-wide v2, v13, Ljk0;->n:J

    .line 348
    :goto_4
    const/4 v1, 0x0

    .line 349
    iput v1, v13, Ljk0;->o:I

    .line 351
    const/4 v11, 0x1

    .line 352
    goto :goto_5

    .line 353
    :cond_3
    move v14, v0

    .line 354
    move-object/from16 v18, v3

    .line 356
    move-object/from16 v19, v4

    .line 358
    move-object/from16 v20, v5

    .line 360
    :goto_5
    iget-wide v0, v13, Ljk0;->n:J

    .line 362
    cmp-long v2, v0, v15

    .line 364
    if-lez v2, :cond_5

    .line 366
    cmp-long v2, v8, v0

    .line 368
    if-lez v2, :cond_5

    .line 370
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    iget-wide v2, v13, Ljk0;->n:J

    .line 379
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, " after time current="

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v1

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Ljk0;

    .line 403
    const/4 v1, 0x0

    .line 404
    iput-boolean v1, v0, Ljk0;->k:Z

    .line 406
    const/4 v11, 0x1

    .line 407
    goto :goto_6

    .line 408
    :cond_4
    move v14, v0

    .line 409
    move-object/from16 v18, v3

    .line 411
    move-object/from16 v19, v4

    .line 413
    move-object/from16 v20, v5

    .line 415
    :cond_5
    :goto_6
    add-int/lit8 v10, v10, -0x1

    .line 417
    move-object/from16 v1, p0

    .line 419
    move v0, v14

    .line 420
    move-object/from16 v3, v18

    .line 422
    move-object/from16 v4, v19

    .line 424
    move-object/from16 v5, v20

    .line 426
    const/4 v2, 0x0

    .line 427
    goto/16 :goto_2

    .line 429
    :cond_6
    move v14, v0

    .line 430
    move-object/from16 v18, v3

    .line 432
    move-object/from16 v19, v4

    .line 434
    move-object/from16 v20, v5

    .line 436
    if-eqz v11, :cond_8

    .line 438
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    const-string v2, "bIsUpdate: "

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v1

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static/range {p0 .. p0}, Lkk0;->b(Landroid/content/Context;)Lkk0;

    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0, v7}, Lkk0;->e(Ljava/util/ArrayList;)Z

    .line 467
    invoke-static/range {p0 .. p0}, Lkk0;->b(Landroid/content/Context;)Lkk0;

    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lkk0;->a()Z

    .line 474
    goto :goto_7

    .line 475
    :cond_7
    move v14, v0

    .line 476
    move-object/from16 v18, v3

    .line 478
    move-object/from16 v19, v4

    .line 480
    move-object/from16 v20, v5

    .line 482
    :cond_8
    :goto_7
    invoke-virtual {v6, v7}, Lsi0;->f(Ljava/util/ArrayList;)V

    .line 485
    goto :goto_8

    .line 486
    :cond_9
    move v14, v0

    .line 487
    move-object/from16 v18, v3

    .line 489
    move-object/from16 v19, v4

    .line 491
    move-object/from16 v20, v5

    .line 493
    :goto_8
    move-object/from16 v1, p0

    .line 495
    move v0, v14

    .line 496
    move-object/from16 v3, v18

    .line 498
    move-object/from16 v4, v19

    .line 500
    move-object/from16 v5, v20

    .line 502
    const/4 v2, 0x0

    .line 503
    goto/16 :goto_1

    .line 505
    :cond_a
    move-object/from16 v18, v3

    .line 507
    sget-object v0, Lma;->a:Ljava/lang/String;

    .line 509
    const-string v1, "all process case"

    .line 511
    const/4 v2, 0x0

    .line 512
    new-array v2, v2, [Ljava/lang/Object;

    .line 514
    invoke-static {v0, v1, v2}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    move-object/from16 v1, v18

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {}, Lti0;->c()Lti0;

    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lti0;->a()Ljava/lang/String;

    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v0

    .line 547
    return-object v0
.end method
